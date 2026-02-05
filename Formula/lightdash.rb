class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2431.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2431.0/lightdash-cli-0.2431.0-macos-arm64.tar.gz"
      sha256 "cd3a5bbde3d0be5604c0826468394de17649cd4d8ad7dd7b8fbd239e5d88c6ad"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2431.0/lightdash-cli-0.2431.0-macos-x64.tar.gz"
      sha256 "70f7337912a0f663cae93b933254f68c36c03297f5485ead5f0500ad76450532"
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
