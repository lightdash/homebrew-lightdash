class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3360.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3360.0/lightdash-cli-0.3360.0-macos-arm64.tar.gz"
      sha256 "e7ae083fdcac471cffc7a96e131cfb04aad9da1f40e05eeb4abbbc8ed63aba2a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3360.0/lightdash-cli-0.3360.0-macos-x64.tar.gz"
      sha256 "815a7a27d50ff9401c4b3a0abd5ebc5727dfdc9d7cc7018e88a2aa1df70c4e86"
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
