class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2780.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2780.0/lightdash-cli-0.2780.0-macos-arm64.tar.gz"
      sha256 "b48cc339b881a959fd83458b9d9939aea95ce1842d793c41b30691798be87638"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2780.0/lightdash-cli-0.2780.0-macos-x64.tar.gz"
      sha256 "87f9ba9b03ab6e39823f5380256bd5a8c8e240117c7cb962a068bacfd3b3cb0b"
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
