class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3474.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3474.0/lightdash-cli-0.3474.0-macos-arm64.tar.gz"
      sha256 "2d9308ef1fa99a2cd7bfa57d782d750aeb7db4cb42b5cd417ddb30af3e0fb3a0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3474.0/lightdash-cli-0.3474.0-macos-x64.tar.gz"
      sha256 "35b32413b7c92570b4df01ffec67fbf29aa13574d3237c7be95d58b5b9b81cf1"
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
