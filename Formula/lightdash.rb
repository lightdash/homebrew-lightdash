class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3269.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3269.0/lightdash-cli-0.3269.0-macos-arm64.tar.gz"
      sha256 "1c45cfce353e674f88724a5572afcf04dec3052929e50d166cb0abbb0b50560d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3269.0/lightdash-cli-0.3269.0-macos-x64.tar.gz"
      sha256 "4fdef3f42839fd28259b2f68371461595c46f278b520fd6b557ed9c706a3a848"
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
