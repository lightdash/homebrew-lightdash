class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.206.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.206.4/lightdash-cli-1.206.4-macos-arm64.tar.gz"
      sha256 "9928842cf8c7f744d5b5236a0e64a4091a4c2345be92a129935a43194d43f38f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.206.4/lightdash-cli-1.206.4-macos-x64.tar.gz"
      sha256 "ac4d20c986071ee994003256e049e781174a361239777f35cbf9bc913f425dd7"
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
