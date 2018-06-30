class ChaimCli < Formula
  desc "Chaim command line interface"
  url "https://s3-eu-west-1.amazonaws.com/chaim-cli/chaim-latest.osx.tgz"
  version "1.6-2"
  sha256 "ad0a1bc109ccc6550090ab427dc7ae5d7289c22a29315b500d9577410f01730d"

  def install
	prefix.install Dir["./*"]
	bin.install_symlink "../chaim"
  end

  test do
	system "chaim --version"
  end
end

