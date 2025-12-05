class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2230.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2230.0/lightdash-cli-0.2230.0-macos-arm64.tar.gz"
      sha256 "18bb5f77394327552b8c2db811792738c2b7bfe629e4c71fc0461b3cfd8c69cd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2230.0/lightdash-cli-0.2230.0-macos-x64.tar.gz"
      sha256 "237f20ef31424cc6cd45c08f50b8d10f88f11919884f9df08bbd2cf4a8384439"
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
