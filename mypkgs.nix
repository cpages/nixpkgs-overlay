self: super:
{
  vim-ycm = self.vim_configurable.customize {
    name = "vim";
    vimrcConfig = {
      customRC = ''
        source ~/.vimrc
      '';
      vam.knownPlugins = super.vimPlugins;
      vam.pluginDictionaries = [{
        names = [
          "youcompleteme"
        ];
      }];
    };
  };

  #kodi = {
  #  enablePVRHTS = true;
  #  enableSteamLauncher = true;
  #};

  #minecraft = {
  #  alsa = true;
  #};

  #my_hello = super.hello;
}

# vim:ts=2:sw=2:et
