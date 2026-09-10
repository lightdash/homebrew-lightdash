class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.187.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.187.0/lightdash-cli-2.187.0-macos-arm64.tar.gz"
      sha256 "cc0eb6010b67a4ffea983486759ba3146cdbbcf35786112c411c38ab2d6e8c77"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.187.0/lightdash-cli-2.187.0-macos-x64.tar.gz"
      sha256 "dea6a7535708e5988756aa9c99ed461eb0c370796af8e8a6bc7a2fbdbd4505fc"
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
