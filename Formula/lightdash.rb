class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3375.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3375.1/lightdash-cli-0.3375.1-macos-arm64.tar.gz"
      sha256 "a98c70513b54a4554620a032fa11681eb1c37c81ee16b548c1deebd133239127"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3375.1/lightdash-cli-0.3375.1-macos-x64.tar.gz"
      sha256 "2738d9edc7dfb74b066f72d9929bcc4465086fae30932717dc17e031c87c8cbd"
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
