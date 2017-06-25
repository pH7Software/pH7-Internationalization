# pH7CMS I18N - Internationalization

pH7CMS Internationalization package. To add new languages to your social dating website.

### Available Languages
*(not 100% completed)*

* **French** (Français)
* **Dutch** (Nederlands)
* **Spanish** (Español)


Please feed free to contribute by translating the files and adding new languages. Fork the repo, add your changes, commit them and create a pull request.


If you want to translate new languages, start with `global.pot` Gettext file. You can use software such as [Poedit](http://poedit.net/) to make the translation much easier.

Then, don't forget to compile it in order to get `global.mo` file and upload it in "binary" format using an FTP client such as Filezilla or WinSCP.


## How to Install Those Languages?

- Upload the `_protected/` folder to your protected pH7CMS's installation with a FTP client such as [FileZilla](https://filezilla-project.org/download.php?type=client) or [WinSCP](https://winscp.net/eng/download.php).

- *Optional:* Open *pH7CMSLangs.sql* file. Replace `pH7_` by your prefix set in "~/_protected/app/configs/config.ini" [database] prefix variable. Then, execute the file through phpMyAdmin.


## Troubleshooting

If it doesn't work even if Gettext is installed on your server, it means the locale (language) you want to install is not available on your server/web hosting. You will have to install it or contact your host to install the locale (language) you want to use for your site.

For Debian-based OS (such as Ubuntu and Linux Mint), please have a look here -> [how to install a new locale](https://github.com/pH7Software/pH7CMS-Test-Gettext-Lang#how-to-install-the-missing-locale-language-on-my-server).


## Website

**[PHP Dating Script](http://ph7cms.com)**


## Author

Pierre-Henry Soria


## Contact

You can send email for any suggestion or question at: *hello {AT} ph7cms {D0T} com*


## License

License: [General Public License 3](http://www.gnu.org/licenses/gpl.html) or later;
