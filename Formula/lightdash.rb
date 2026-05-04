class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2864.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.6/lightdash-cli-0.2864.6-macos-arm64.tar.gz"
      sha256 "3347bd68bda77844cc734c89254de9684202ee889f95e96adbc1c91001b97932"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2864.6/lightdash-cli-0.2864.6-macos-x64.tar.gz"
      sha256 "987894cfed6d9e31b816bbb2a400a21e1895a3cba91bf793753e786e572d5d9d"
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
