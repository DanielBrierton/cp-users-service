DO $$
    BEGIN
        CREATE OR REPLACE VIEW cd_user_profile AS SELECT
            cd_profiles.id AS profile_id,
            cd_profiles.name AS profile_name,
            cd_profiles.user_id,
            cd_profiles.alias,
            cd_profiles.dob,
            cd_profiles.country,
            cd_profiles.city,
            cd_profiles.private,
            cd_profiles.place,
            cd_profiles.gender,
            cd_profiles.address,
            cd_profiles.last_edited,
            cd_profiles.email AS profile_email,
            cd_profiles.phone AS profile_phone,
            cd_profiles.parents,
            cd_profiles.children,
            cd_profiles.linkedin,
            cd_profiles.twitter,
            cd_profiles.languages_spoken,
            cd_profiles.programming_languages,
            cd_profiles.notes,
            cd_profiles.projects,
            cd_profiles.badges,
            cd_profiles.countryname,
            cd_profiles.countrynumber,
            cd_profiles.continent,
            cd_profiles.alpha2,
            cd_profiles.alpha3,
            cd_profiles.admin1_code,
            cd_profiles.admin1_name,
            cd_profiles.admin2_code,
            cd_profiles.admin2_name,
            cd_profiles.admin3_code,
            cd_profiles.admin3_name,
            cd_profiles.admin4_code,
            cd_profiles.admin4_name,
            cd_profiles.state,
            cd_profiles.county,
            cd_profiles.place_geoname_id,
            cd_profiles.place_name,
            cd_profiles.user_type,
            cd_profiles.optional_hidden_fields,
            cd_profiles.avatar,
            cd_profiles.required_fields_complete,
            cd_profiles.ninja_invites,
            cd_profiles.parent_invites,
            sys_user.id,
            sys_user.nick,
            sys_user.email,
            sys_user.name,
            sys_user.username,
            sys_user.activated,
            sys_user.level,
            sys_user.mysql_user_id,
            sys_user.first_name,
            sys_user.last_name,
            sys_user.roles,
            sys_user.active,
            sys_user.phone,
            sys_user.mailing_list,
            sys_user.terms_conditions_accepted,
            sys_user.when,
            sys_user.confirmed,
            sys_user.confirmcode,
            sys_user.salt,
            sys_user.pass,
            sys_user.admin,
            sys_user.modified,
            sys_user.accounts,
            sys_user.locale,
            sys_user.banned,
            sys_user.ban_reason,
            sys_user.init_user_type,
            sys_user.join_requests,
            sys_user.last_login
        FROM sys_user JOIN cd_profiles ON sys_user.id=cd_profiles.user_id;
    END;
$$
