class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.229.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.229.0/lightdash-cli-1.229.0-macos-arm64.tar.gz"
      sha256 "b076d259b0ff166ab89288af026b6ae341e1077f0b765c02e9168673a03ba822"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.229.0/lightdash-cli-1.229.0-macos-x64.tar.gz"
      sha256 "0cbf3ae02ecadc2a676fe3704dff36f312e87d1ddc12e226dce71d4683b9544d"
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
