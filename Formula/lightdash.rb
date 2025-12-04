class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2224.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2224.1/lightdash-cli-0.2224.1-macos-arm64.tar.gz"
      sha256 "8a9094b20779c4fd164a2a4cdbe7ece2db21cb5af7dad5fd15dd0f8472401dbe"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2224.1/lightdash-cli-0.2224.1-macos-x64.tar.gz"
      sha256 "157e658f62ad35cf2e24b9db065e27e43d39e8a25ccb71d664d5766caa66ec92"
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
