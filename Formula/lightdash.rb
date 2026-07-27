class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3480.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3480.0/lightdash-cli-0.3480.0-macos-arm64.tar.gz"
      sha256 "5e87d2cde573cc0918c8ec02e8a97e52eaf69189a129ae6bcea1db7c6354a089"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3480.0/lightdash-cli-0.3480.0-macos-x64.tar.gz"
      sha256 "7d57a0f041a10a6594954151ad5df192c6e291a4391df5711cc4466cdbfd172e"
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
