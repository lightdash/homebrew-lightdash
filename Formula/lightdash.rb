class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.204.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.204.0/lightdash-cli-1.204.0-macos-arm64.tar.gz"
      sha256 "25317427969ee36afb749de191dedcf15e47868a8dc3f50d390e7e885df22a44"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.204.0/lightdash-cli-1.204.0-macos-x64.tar.gz"
      sha256 "91abcf0fe8f069ba61e67372ed0fbe5fcfbeb30736e5884cc7c5ab6a70e4d391"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
