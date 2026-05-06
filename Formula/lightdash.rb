class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2878.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2878.0/lightdash-cli-0.2878.0-macos-arm64.tar.gz"
      sha256 "0451c35adf9fc5952264aaa606caedfdcea35045c7818fc075217248f6d4a363"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2878.0/lightdash-cli-0.2878.0-macos-x64.tar.gz"
      sha256 "0bd1c97d58028b3a327e46e5bba6c48dd902b4121d57202e17608e1a5c6bdbef"
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
