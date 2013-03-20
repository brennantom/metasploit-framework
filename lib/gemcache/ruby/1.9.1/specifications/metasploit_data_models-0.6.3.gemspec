# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "metasploit_data_models"
  s.version = "0.6.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Trevor Rosen"]
  s.date = "2013-03-20"
  s.description = "Implements minimal ActiveRecord models and database helper code used in both the Metasploit Framework (MSF) and Metasploit commercial editions."
  s.email = ["trevor_rosen@rapid7.com"]
  s.executables = ["mdm_console"]
  s.files = [".gitignore", ".rspec", ".simplecov", ".yardopts", "Gemfile", "LICENSE", "README.md", "Rakefile", "app/models/mdm/api_key.rb", "app/models/mdm/client.rb", "app/models/mdm/cred.rb", "app/models/mdm/event.rb", "app/models/mdm/exploit_attempt.rb", "app/models/mdm/exploited_host.rb", "app/models/mdm/host.rb", "app/models/mdm/host_detail.rb", "app/models/mdm/host_tag.rb", "app/models/mdm/imported_cred.rb", "app/models/mdm/listener.rb", "app/models/mdm/loot.rb", "app/models/mdm/macro.rb", "app/models/mdm/mod_ref.rb", "app/models/mdm/module_action.rb", "app/models/mdm/module_arch.rb", "app/models/mdm/module_author.rb", "app/models/mdm/module_detail.rb", "app/models/mdm/module_mixin.rb", "app/models/mdm/module_platform.rb", "app/models/mdm/module_ref.rb", "app/models/mdm/module_target.rb", "app/models/mdm/nexpose_console.rb", "app/models/mdm/note.rb", "app/models/mdm/profile.rb", "app/models/mdm/ref.rb", "app/models/mdm/report.rb", "app/models/mdm/report_template.rb", "app/models/mdm/route.rb", "app/models/mdm/service.rb", "app/models/mdm/session.rb", "app/models/mdm/session_event.rb", "app/models/mdm/tag.rb", "app/models/mdm/task.rb", "app/models/mdm/user.rb", "app/models/mdm/vuln.rb", "app/models/mdm/vuln_attempt.rb", "app/models/mdm/vuln_detail.rb", "app/models/mdm/vuln_ref.rb", "app/models/mdm/web_form.rb", "app/models/mdm/web_page.rb", "app/models/mdm/web_site.rb", "app/models/mdm/web_vuln.rb", "app/models/mdm/wmap_request.rb", "app/models/mdm/wmap_target.rb", "app/models/mdm/workspace.rb", "bin/mdm_console", "console_db.yml", "db/migrate/000_create_tables.rb", "db/migrate/001_add_wmap_tables.rb", "db/migrate/002_add_workspaces.rb", "db/migrate/003_move_notes.rb", "db/migrate/004_add_events_table.rb", "db/migrate/005_expand_info.rb", "db/migrate/006_add_timestamps.rb", "db/migrate/007_add_loots.rb", "db/migrate/008_create_users.rb", "db/migrate/009_add_loots_ctype.rb", "db/migrate/010_add_alert_fields.rb", "db/migrate/011_add_reports.rb", "db/migrate/012_add_tasks.rb", "db/migrate/013_add_tasks_result.rb", "db/migrate/014_add_loots_fields.rb", "db/migrate/015_rename_user.rb", "db/migrate/016_add_host_purpose.rb", "db/migrate/017_expand_info2.rb", "db/migrate/018_add_workspace_user_info.rb", "db/migrate/019_add_workspace_desc.rb", "db/migrate/020_add_user_preferences.rb", "db/migrate/021_standardize_info_and_data.rb", "db/migrate/022_enlarge_event_info.rb", "db/migrate/023_add_report_downloaded_at.rb", "db/migrate/024_convert_service_info_to_text.rb", "db/migrate/025_add_user_admin.rb", "db/migrate/026_add_creds_table.rb", "db/migrate/20100819123300_migrate_cred_data.rb", "db/migrate/20100824151500_add_exploited_table.rb", "db/migrate/20100908001428_add_owner_to_workspaces.rb", "db/migrate/20100911122000_add_report_templates.rb", "db/migrate/20100916151530_require_admin_flag.rb", "db/migrate/20100916175000_add_campaigns_and_templates.rb", "db/migrate/20100920012100_add_generate_exe_column.rb", "db/migrate/20100926214000_add_template_prefs.rb", "db/migrate/20101001000000_add_web_tables.rb", "db/migrate/20101002000000_add_query.rb", "db/migrate/20101007000000_add_vuln_info.rb", "db/migrate/20101008111800_add_clients_to_campaigns.rb", "db/migrate/20101009023300_add_campaign_attachments.rb", "db/migrate/20101104135100_add_imported_creds.rb", "db/migrate/20101203000000_fix_web_tables.rb", "db/migrate/20101203000001_expand_host_comment.rb", "db/migrate/20101206212033_add_limit_to_network_to_workspaces.rb", "db/migrate/20110112154300_add_module_uuid_to_tasks.rb", "db/migrate/20110204112800_add_host_tags.rb", "db/migrate/20110317144932_add_session_table.rb", "db/migrate/20110414180600_add_local_id_to_session_table.rb", "db/migrate/20110415175705_add_routes_table.rb", "db/migrate/20110422000000_convert_binary.rb", "db/migrate/20110425095900_add_last_seen_to_sessions.rb", "db/migrate/20110513143900_track_successful_exploits.rb", "db/migrate/20110517160800_rename_and_prune_nessus_vulns.rb", "db/migrate/20110527000000_add_task_id_to_reports_table.rb", "db/migrate/20110527000001_add_api_keys_table.rb", "db/migrate/20110606000001_add_macros_table.rb", "db/migrate/20110622000000_add_settings_to_tasks_table.rb", "db/migrate/20110624000001_add_listeners_table.rb", "db/migrate/20110625000001_add_macro_to_listeners_table.rb", "db/migrate/20110630000001_add_nexpose_consoles_table.rb", "db/migrate/20110630000002_add_name_to_nexpose_consoles_table.rb", "db/migrate/20110717000001_add_profiles_table.rb", "db/migrate/20110727163801_expand_cred_ptype_column.rb", "db/migrate/20110730000001_add_initial_indexes.rb", "db/migrate/20110812000001_prune_indexes.rb", "db/migrate/20110922000000_expand_notes.rb", "db/migrate/20110928101300_add_mod_ref_table.rb", "db/migrate/20111011110000_add_display_name_to_reports_table.rb", "db/migrate/20111203000000_inet_columns.rb", "db/migrate/20111204000000_more_inet_columns.rb", "db/migrate/20111210000000_add_scope_to_hosts.rb", "db/migrate/20120126110000_add_virtual_host_to_hosts.rb", "db/migrate/20120411173220_rename_workspace_members.rb", "db/migrate/20120601152442_add_counter_caches_to_hosts.rb", "db/migrate/20120625000000_add_vuln_details.rb", "db/migrate/20120625000001_add_host_details.rb", "db/migrate/20120625000002_expand_details.rb", "db/migrate/20120625000003_expand_details2.rb", "db/migrate/20120625000004_add_vuln_attempts.rb", "db/migrate/20120625000005_add_vuln_and_host_counter_caches.rb", "db/migrate/20120625000006_add_module_details.rb", "db/migrate/20120625000007_add_exploit_attempts.rb", "db/migrate/20120625000008_add_fail_message.rb", "db/migrate/20120718202805_add_owner_and_payload_to_web_vulns.rb", "db/migrate/20130228214900_change_required_columns_to_null_false_in_web_vulns.rb", "lib/mdm.rb", "lib/mdm/host/operating_system_normalization.rb", "lib/metasploit_data_models.rb", "lib/metasploit_data_models/base64_serializer.rb", "lib/metasploit_data_models/engine.rb", "lib/metasploit_data_models/serialized_prefs.rb", "lib/metasploit_data_models/validators/ip_format_validator.rb", "lib/metasploit_data_models/validators/password_is_strong_validator.rb", "lib/metasploit_data_models/version.rb", "lib/tasks/yard.rake", "metasploit_data_models.gemspec", "script/rails", "spec/app/models/mdm/web_vuln_spec.rb", "spec/dummy/Rakefile", "spec/dummy/app/assets/javascripts/application.js", "spec/dummy/app/assets/stylesheets/application.css", "spec/dummy/app/controllers/application_controller.rb", "spec/dummy/app/helpers/application_helper.rb", "spec/dummy/app/mailers/.gitkeep", "spec/dummy/app/models/.gitkeep", "spec/dummy/app/views/layouts/application.html.erb", "spec/dummy/config.ru", "spec/dummy/config/application.rb", "spec/dummy/config/boot.rb", "spec/dummy/config/database.yml.example", "spec/dummy/config/environment.rb", "spec/dummy/config/environments/development.rb", "spec/dummy/config/environments/production.rb", "spec/dummy/config/environments/test.rb", "spec/dummy/config/initializers/backtrace_silencers.rb", "spec/dummy/config/initializers/inflections.rb", "spec/dummy/config/initializers/mime_types.rb", "spec/dummy/config/initializers/secret_token.rb", "spec/dummy/config/initializers/session_store.rb", "spec/dummy/config/initializers/wrap_parameters.rb", "spec/dummy/config/routes.rb", "spec/dummy/db/schema.rb", "spec/dummy/lib/assets/.gitkeep", "spec/dummy/log/.gitkeep", "spec/dummy/public/404.html", "spec/dummy/public/422.html", "spec/dummy/public/500.html", "spec/dummy/public/favicon.ico", "spec/dummy/script/rails", "spec/factories/mdm/addresses.rb", "spec/factories/mdm/hosts.rb", "spec/factories/mdm/services.rb", "spec/factories/mdm/users.rb", "spec/factories/mdm/web_sites.rb", "spec/factories/mdm/web_vulns.rb", "spec/factories/mdm/workspaces.rb", "spec/lib/base64_serializer_spec.rb", "spec/spec_helper.rb"]
  s.homepage = ""
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Database code for MSF and Metasploit Pro"
  s.test_files = ["spec/app/models/mdm/web_vuln_spec.rb", "spec/dummy/Rakefile", "spec/dummy/app/assets/javascripts/application.js", "spec/dummy/app/assets/stylesheets/application.css", "spec/dummy/app/controllers/application_controller.rb", "spec/dummy/app/helpers/application_helper.rb", "spec/dummy/app/mailers/.gitkeep", "spec/dummy/app/models/.gitkeep", "spec/dummy/app/views/layouts/application.html.erb", "spec/dummy/config.ru", "spec/dummy/config/application.rb", "spec/dummy/config/boot.rb", "spec/dummy/config/database.yml.example", "spec/dummy/config/environment.rb", "spec/dummy/config/environments/development.rb", "spec/dummy/config/environments/production.rb", "spec/dummy/config/environments/test.rb", "spec/dummy/config/initializers/backtrace_silencers.rb", "spec/dummy/config/initializers/inflections.rb", "spec/dummy/config/initializers/mime_types.rb", "spec/dummy/config/initializers/secret_token.rb", "spec/dummy/config/initializers/session_store.rb", "spec/dummy/config/initializers/wrap_parameters.rb", "spec/dummy/config/routes.rb", "spec/dummy/db/schema.rb", "spec/dummy/lib/assets/.gitkeep", "spec/dummy/log/.gitkeep", "spec/dummy/public/404.html", "spec/dummy/public/422.html", "spec/dummy/public/500.html", "spec/dummy/public/favicon.ico", "spec/dummy/script/rails", "spec/factories/mdm/addresses.rb", "spec/factories/mdm/hosts.rb", "spec/factories/mdm/services.rb", "spec/factories/mdm/users.rb", "spec/factories/mdm/web_sites.rb", "spec/factories/mdm/web_vulns.rb", "spec/factories/mdm/workspaces.rb", "spec/lib/base64_serializer_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<redcarpet>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_runtime_dependency(%q<activerecord>, [">= 3.2.13"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<pg>, [">= 0"])
      s.add_runtime_dependency(%q<pry>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<redcarpet>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<activerecord>, [">= 3.2.13"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<pg>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<redcarpet>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<activerecord>, [">= 3.2.13"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<pg>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
  end
end
