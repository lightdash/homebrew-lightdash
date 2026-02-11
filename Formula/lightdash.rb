class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2454.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2454.1/lightdash-cli-0.2454.1-macos-arm64.tar.gz"
      sha256 "aab180c3f3672b0567cc911fd93a0661956e7f7bb6cefccd60a1280baf6fb8fa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2454.1/lightdash-cli-0.2454.1-macos-x64.tar.gz"
      sha256 "2d50b646c6c945721636a1727cb8449baf92d8df9e6ab77b0dc4e9c5077b3ef2"
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
