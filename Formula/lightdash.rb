class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3371.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3371.0/lightdash-cli-0.3371.0-macos-arm64.tar.gz"
      sha256 "0afee81bcac3d11dd1710054e878ac71982634d5f17480866e005a9da6bb6e3c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3371.0/lightdash-cli-0.3371.0-macos-x64.tar.gz"
      sha256 "50032806ab208e2d6b7d546b889cdbcb26a3b9c12f38408c87f84d7b43884602"
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
