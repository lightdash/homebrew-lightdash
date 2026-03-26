class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2674.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2674.1/lightdash-cli-0.2674.1-macos-arm64.tar.gz"
      sha256 "ddb883709a4a329a3b926eeb0c473e637b044211b436e43f03b7c17cb1509bd8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2674.1/lightdash-cli-0.2674.1-macos-x64.tar.gz"
      sha256 "86038cb44cc6acbb2e3578b45025d6e83afb2fe5d7080c6cc6d25bd09d5cc819"
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
