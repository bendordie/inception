<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp_db' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql-svc:3306' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'gKjg[B6$XenZTKMc|%-Z-LLP],5>-wcOx))-&c-Ab$id$s-bpCh-&W.=M28<0 k/' );
define( 'SECURE_AUTH_KEY',  'YW:DurJ*:oXv!PG5@3%;>&M[<(UqCDgd>A#bnc >_]Y)-.R=lJQkaep*e0;{+*Sh' );
define( 'LOGGED_IN_KEY',    '<<RP/[V5En_71+?m(3+lKz%%YrWn{lIjO=j)KSoAK:`N{o=_I_=_TC^<2w(#Fw3U' );
define( 'NONCE_KEY',        'Hq4b4bo/W(A|rkv=yll[N<(?n+3&!lY;Tf`Cyc+wI d{AE.I~AxmeiN+-V4.?);n' );
define( 'AUTH_SALT',        'Zc5R-TZ$[&GYlmtD SN}D`+~Bk Cp|<po8i[+c[BM=6-hnW4R1YjqJ+ JWJi.m8&' );
define( 'SECURE_AUTH_SALT', '&%STnDQ9Sw%O+$$!{5E$3kT4|]0|Jk+BTU Av7@T|ZC:M>s&5Uam^-|@dA;1mgyT' );
define( 'LOGGED_IN_SALT',   '+ E7!s*`8OhY+=:QM-gz/Uh+sLYTk/}*W#?!3<l,`U_`{} !1|8!*mxXa; b9D g' );
define( 'NONCE_SALT',       '5b]{pnm-+s)M%+`C!/#*2,c =Nj9q|6])Y=^Ny]w2+aDmolLbr]Z#pOq)SVQL[HI' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
