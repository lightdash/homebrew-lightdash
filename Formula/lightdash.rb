class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3243.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3243.2/lightdash-cli-0.3243.2-macos-arm64.tar.gz"
      sha256 "8b361c07b866c4376c3af476ab01622d813c107c5d7cefd04ad8e24d2abb37ed"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3243.2/lightdash-cli-0.3243.2-macos-x64.tar.gz"
      sha256 "f78faf05349c7a007843d9b0cee498dad234583e4a715fbf8e4f9b082c2fe6f9"
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
