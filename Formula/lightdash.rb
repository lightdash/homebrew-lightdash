class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.175.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.175.0/lightdash-cli-1.175.0-macos-arm64.tar.gz"
      sha256 "d4db10b741ee0320b990b5a21739358ff0f71f660a3cd849539a11536cc392f7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.175.0/lightdash-cli-1.175.0-macos-x64.tar.gz"
      sha256 "d89576b278eac8e6d430038720f65968c1672068c5d6837c8a288ead3508c291"
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
