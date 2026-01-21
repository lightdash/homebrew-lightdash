class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2363.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2363.0/lightdash-cli-0.2363.0-macos-arm64.tar.gz"
      sha256 "96df8d78ca6bbe1c81f1027764d716110ae24f0fbb425e49e15b07da8b4618b8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2363.0/lightdash-cli-0.2363.0-macos-x64.tar.gz"
      sha256 "50d7cae152b427ffc4e875b3bd2ee307a07459b2e40c1470bd41d811dd9de1e0"
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
