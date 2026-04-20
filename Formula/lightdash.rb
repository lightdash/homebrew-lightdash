class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2768.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2768.0/lightdash-cli-0.2768.0-macos-arm64.tar.gz"
      sha256 "3a51c4fe03b11bb469c47ff9fba56f306915f8daa60fdef4c5f7f1882aee3c10"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2768.0/lightdash-cli-0.2768.0-macos-x64.tar.gz"
      sha256 "92d2580411c62cca3ad5117b5e14ef3ae47ac92d281dc1213578bb4703461970"
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
