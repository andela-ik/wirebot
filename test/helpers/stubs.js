const slackUser = {
  id: 'W012A3CDE',
  team_id: 'T012AB3C4',
  name: 'spengler',
  deleted: false,
  color: '9f69e7',
  real_name: 'Egon Spengler',
  tz: 'America/Los_Angeles',
  tz_label: 'Pacific Daylight Time',
  tz_offset: -25200,
  profile: {
    avatar_hash: 'ge3b51ca72de',
    status_text: 'Print is dead',
    status_emoji: ':books:',
    real_name: 'Egon Spengler',
    display_name: 'spengler',
    real_name_normalized: 'Egon Spengler',
    display_name_normalized: 'spengler',
    email: 'spengler@ghostbusters.example.com',
    image_24: 'https://.../avatar/e3b51ca72dee4ef87916ae2b9240df50.jpg',
    image_32: 'https://.../avatar/e3b51ca72dee4ef87916ae2b9240df50.jpg',
    image_48: 'https://.../avatar/e3b51ca72dee4ef87916ae2b9240df50.jpg',
    image_72: 'https://.../avatar/e3b51ca72dee4ef87916ae2b9240df50.jpg',
    image_192: 'https://.../avatar/e3b51ca72dee4ef87916ae2b9240df50.jpg',
    image_512: 'https://.../avatar/e3b51ca72dee4ef87916ae2b9240df50.jpg',
    team: 'T012AB3C4'
  },
  is_admin: true,
  is_owner: false,
  is_primary_owner: false,
  is_restricted: false,
  is_ultra_restricted: false,
  is_bot: false,
  updated: 1502138686,
  is_app_user: false,
  has_2fa: false
}

const errorStub = {
  message: 'hello error',
  code: 'error code',
  stack: 'stack trace',
  response: {
    request: {
      headers: {
        'user-agent': 'Intel x86'
      },
      agent: {
        protocol: 'https'
      },
      res: {
        headers: {
          date: Date.now()
        },
        client: {
          servername: 'wirebot'
        }
      }
    }
  }
}

module.exports = {
  slackUser,
  errorStub
}