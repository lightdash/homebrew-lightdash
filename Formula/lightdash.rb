class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3201.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3201.2/lightdash-cli-0.3201.2-macos-arm64.tar.gz"
      sha256 "63428456b267965e4e0601f97a9d250e6e892f1ad42754d8022af982a1355f89"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3201.2/lightdash-cli-0.3201.2-macos-x64.tar.gz"
      sha256 "12bd07039ad4091799c7cdd2a16c6334b14bf00acc98217565e647806ec36ec1"
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
