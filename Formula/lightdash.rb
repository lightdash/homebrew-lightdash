class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3007.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3007.0/lightdash-cli-0.3007.0-macos-arm64.tar.gz"
      sha256 "851b8aa6bb63acbb6a33430f8328bd5ba4a8a5a33d5a29a97411e8c8f6f916e0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3007.0/lightdash-cli-0.3007.0-macos-x64.tar.gz"
      sha256 "edcc6b03e3bd487e95b78ef9f6c488d43903d129374ae7ce25c435af26f97d05"
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
