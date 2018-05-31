class ChaimCli < Formula
  desc "Chaim command line interface"
  url "https://s3-eu-west-1.amazonaws.com/chaim-cli/chaim-latest.osx.tgz"
  version "1.5-0"
  sha256 "0b297204382627f905bdea91f65e330ba724631a989efa05b49fe2928bb19c9d"

  def install
	prefix.install Dir["./*"]
	bin.install_symlink "../chaim"
  end

  test do
	system "chaim --version"
  end
end

