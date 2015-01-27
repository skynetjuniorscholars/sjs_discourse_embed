# name: sjs_discourse_embed
# about: Sets security headers for embedding Discourse on SJS.
# version: 0.0
# authors: Skynet Junior Scholars

Rails.application.config.action_dispatch.default_headers['X-Frame-Options'] = 'ALLOWALL'