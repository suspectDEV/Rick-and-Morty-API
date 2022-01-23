const jwt = require("jsonwebtoken");

const config = process.env;

const verifyToken = (req, res, next) => {
  const token = req.headers["x-access-token"];

  if (!token) {
    return res
      .status(403)
      .json({
        message: "No está autenticado. \nEs necesario un token para continuar.",
        code: "token/empty_token",
      });
  }
  try {
    const decoded = jwt.verify(token, config.TOKEN_KEY);
    req.user = decoded;
  } catch (err) {
    return res
      .status(401)
      .json({ message: "Token inválido", code: "token/invalid_token" });
  }
  return next();
};

module.exports = verifyToken;
