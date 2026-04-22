class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2778.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2778.0/lightdash-cli-0.2778.0-macos-arm64.tar.gz"
      sha256 "e4fc0d6cfc0c679c3b50dfa26e92b86e349ac3d59df976d7574f7fc7d334fc80"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2778.0/lightdash-cli-0.2778.0-macos-x64.tar.gz"
      sha256 "504d0ff23b225a081839ccd05fe1d20226363d4859d468c337a61c7f787fe6fc"
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
