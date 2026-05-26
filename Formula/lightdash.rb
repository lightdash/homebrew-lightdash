class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3022.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3022.0/lightdash-cli-0.3022.0-macos-arm64.tar.gz"
      sha256 "68bf9229762fbd9b0a1ea1fe95e07863fb5d91fa960ebeeff9f0e693892fe754"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3022.0/lightdash-cli-0.3022.0-macos-x64.tar.gz"
      sha256 "211dd0d32e09b28950e563c3d2c15eb86e36c72459fcb04469055c372ef341b0"
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
