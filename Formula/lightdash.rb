class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2692.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2692.1/lightdash-cli-0.2692.1-macos-arm64.tar.gz"
      sha256 "5cb840c870cc62b2a25d9c7bd16485d902424518347998d49e2eade4b1f5c189"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2692.1/lightdash-cli-0.2692.1-macos-x64.tar.gz"
      sha256 "abe02bb653b9119fcf00cdc62b64494ca3dfcce837d08a47cf440f1151c87db3"
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
