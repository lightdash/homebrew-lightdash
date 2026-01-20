class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2356.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2356.0/lightdash-cli-0.2356.0-macos-arm64.tar.gz"
      sha256 "17f147eb29b66a85d28e824c5c27254d21d1b67c7b5e58961728c43c999b48ca"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2356.0/lightdash-cli-0.2356.0-macos-x64.tar.gz"
      sha256 "06335431efe49a1c220a27d915955553dd6b2074562284a43a6c82dbfd88b001"
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
