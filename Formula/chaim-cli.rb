class ChaimCli < Formula
  desc "Chaim command line interface"
  url "https://s3-eu-west-1.amazonaws.com/chaim-cli/chaim-1.6-2.osx.tgz"
  version "1.6-2"
  sha256 "06d7ea5b9f803da44eebe66d89fe23582d4279fd97c943c9f2a60a7d4a64624b"

  def install
	prefix.install Dir["./*"]
	bin.install_symlink "../chaim"
  end

  test do
	system "chaim --version"
  end
end

