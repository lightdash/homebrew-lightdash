class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2783.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2783.0/lightdash-cli-0.2783.0-macos-arm64.tar.gz"
      sha256 "a7dc21a41d56d3253f33b71b35a1f7ef9b7ebd3922d8a5040ad6e9e3288ae842"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2783.0/lightdash-cli-0.2783.0-macos-x64.tar.gz"
      sha256 "7a9377e05e19183e2eb50f6157b2226f3d9bd6a8dccc92c14d92205679d7c7b8"
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
