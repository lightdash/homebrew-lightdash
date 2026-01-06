class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2300.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2300.0/lightdash-cli-0.2300.0-macos-arm64.tar.gz"
      sha256 "166d525a75d5216d5bba155ffbeb543b792892b0f434209a6e1c5c83826aca70"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2300.0/lightdash-cli-0.2300.0-macos-x64.tar.gz"
      sha256 "d898fde2888e66b01c70979d1ae91bfd27f209c3576be08786500e16364f75d6"
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
