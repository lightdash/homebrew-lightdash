class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.230.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.230.0/lightdash-cli-2.230.0-macos-arm64.tar.gz"
      sha256 "d9b56e10bda46bd294919b4c331a7b4a42cebd63e7eee437b85139251e385932"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.230.0/lightdash-cli-2.230.0-macos-x64.tar.gz"
      sha256 "41c384da13b41ad4e9a9d99f0dc28e2ddc63152979660fac12be67aa69637989"
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
