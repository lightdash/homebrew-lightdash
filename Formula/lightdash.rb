class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2852.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2852.1/lightdash-cli-0.2852.1-macos-arm64.tar.gz"
      sha256 "71246e0471d8bf44090b967c433bb3d9fd5ed3b1e7d746d54963fc557617cdc5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2852.1/lightdash-cli-0.2852.1-macos-x64.tar.gz"
      sha256 "4be822b82f3a882b1ae63feed97350f07dd50f8c4547d6c4a348438a92602483"
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
