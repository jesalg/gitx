require 'thor'
require 'gitx'
require 'gitx/cli/base_command'

module Gitx
  module Cli
    class StartCommand < BaseCommand
      EXAMPLE_BRANCH_NAMES = %w( api-fix-invalid-auth desktop-cleanup-avatar-markup share-form-add-edit-link )
      VALID_BRANCH_NAME_REGEX = /^[A-Za-z0-9\-_]+$/

      desc 'start', 'start a new git branch with latest changes from master'
      method_option :issue, type: :numeric, aliases: '-i', desc: 'Github issue number'
      def start(branch_name = nil)
        until valid_new_branch_name?(branch_name)
          branch_name = ask("What would you like to name your branch? (ex: #{EXAMPLE_BRANCH_NAMES.sample})")
        end

        checkout_branch config.base_branch
        run_git_cmd 'pull'
        repo.create_branch branch_name, config.base_branch
        checkout_branch branch_name
        run_git_cmd('commit', '--allow-empty', '--message', "Starting work on #{branch_name} (Issue ##{options[:issue]})") if options[:issue]
      end

      private

      def valid_new_branch_name?(branch)
        return false if repo_branches.include?(branch)
        # TODO: use Rugged::Reference.valid_name?(branch) here instead of regex
        # see https://github.com/libgit2/rugged/blob/master/test/reference_test.rb
        branch =~ VALID_BRANCH_NAME_REGEX
      end

      def repo_branches
        @branch_names ||= repo.branches.each_name.map do |branch|
          # FIXME: this doesn't detect remote branches with slashes (ex: foo/bar)
          branch.split('/').last
        end
      end
    end
  end
end
