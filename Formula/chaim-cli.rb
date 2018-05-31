class ChaimCli < Formula
  desc "Chaim command line interface"
  url "https://s3-eu-west-1.amazonaws.com/chaim-cli/chaim-latest.osx.tgz"
  version "1.5-0"
  sha256 "6ab55c64bf9b88f448291f88732291003aa2cdd467ebe502abf2d2c7da39bf79"

  def install
	prefix.install Dir["./*"]
	bin.install_symlink "../chaim"
  end

  test do
	system "chaim --version"
  end
end

