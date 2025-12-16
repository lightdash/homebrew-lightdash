class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2257.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2257.0/lightdash-cli-0.2257.0-macos-arm64.tar.gz"
      sha256 "0837c37a5e4caeccbaf8a45866e95f771973f248cf9f2b3dfc6aa9f871251500"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2257.0/lightdash-cli-0.2257.0-macos-x64.tar.gz"
      sha256 "eb4c2fb35a6ac67437738181b4a408c5e666ebb0c1d14f873d11b7b8c30ad4f1"
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
