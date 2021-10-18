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
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'wordpress' );

/** MySQL database password */
define( 'DB_PASSWORD', 'quang123' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         '2mAz#7[k7Vj9#1WOBUFo4XJxPrpj#f$axNYMu~@=K3lgai%J}UBuXy@U$P5K o$;' );
define( 'SECURE_AUTH_KEY',  'jzP1V:$^3-2DrOG`6N,9Bl99aAuFAEt#/mY,EKyBwPOK1/f%#0W,G~Z9oNaQAy+7' );
define( 'LOGGED_IN_KEY',    '#P 7?4kdpcKA6.;2vzI0Z;a--#7q7>T7=N{nOtOP7r59EdO}F0eVu}QvBKknipN_' );
define( 'NONCE_KEY',        'wCsJS;I@n3X-g[Lin6J]g+t/#mN;^a#%sV|?q7j0WsfvPms~#hM+3D(-7H,N:0MO' );
define( 'AUTH_SALT',        'Y=L]7d`X%+Z%]X)1p}Mi3FPS2`zsRFeq_3K~-Hf8zdF=)[.AA/4_)J0,R0S!ZOb4' );
define( 'SECURE_AUTH_SALT', '/A7W)+&I#o>gQby++-Y@{}*II,FzA0P(A);q-7__]X>j;r0o/{pRqo)Xi:<YT3_[' );
define( 'LOGGED_IN_SALT',   'nt+O s{&n~=KjV5&^t(`5!iWBu<G]% 8[x1x(|@jsfyeeYburM!izF^=41a(m(|w' );
define( 'NONCE_SALT',       'Sx z)iqDPrZOxQ`coZl$.WJWSqeArTB^2Z}IE2Fqs LO*TUo}_BU>O~T2FKE2lSN' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'blackpink';

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
