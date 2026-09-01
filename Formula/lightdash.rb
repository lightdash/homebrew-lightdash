class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.75.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.75.0/lightdash-cli-2.75.0-macos-arm64.tar.gz"
      sha256 "088c64a3b95b3acc7a7dd322b9b9796ab6875993384f584c3b03db7a8569505b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.75.0/lightdash-cli-2.75.0-macos-x64.tar.gz"
      sha256 "430b816394edb4842ced385f093fce6e4593eb95fb4000dca3472a6d6a1ab206"
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
