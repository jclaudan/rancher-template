module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', 'cd78c05d6b6dee7b57f708588adb6a72'),
  },
});
