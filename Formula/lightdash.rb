class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2265.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2265.1/lightdash-cli-0.2265.1-macos-arm64.tar.gz"
      sha256 "2787f798676e4fa791597cb538980a3dcb79b949f72ecbb5cf3a181a57c334a7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2265.1/lightdash-cli-0.2265.1-macos-x64.tar.gz"
      sha256 "58b4bae2e058e5af32d04485331e6075a3f113abad9f3269f9ec322424ca4c13"
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
