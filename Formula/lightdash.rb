class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3026.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3026.0/lightdash-cli-0.3026.0-macos-arm64.tar.gz"
      sha256 "92932840d0314d0b27496c060626b39dd1584db0df865335611d909155158324"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3026.0/lightdash-cli-0.3026.0-macos-x64.tar.gz"
      sha256 "b3dad550b7f05da76bea285523f7282bc71154ea92949a2e1ba697c62b48cc6f"
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
