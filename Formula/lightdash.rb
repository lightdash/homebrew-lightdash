class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.214.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.214.0/lightdash-cli-3.214.0-macos-arm64.tar.gz"
      sha256 "d52dd1ba18e94ddd5de3f4977299009b5c1f535d757bcf28731483360840bb3e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.214.0/lightdash-cli-3.214.0-macos-x64.tar.gz"
      sha256 "b11c528d0adbc4a7dd46401ecd47a7f499ab08e0c73651b745d55d9fe41fced6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.214.0/lightdash-cli-3.214.0-linux-x64.tar.gz"
    sha256 "07ca0cadff18012cf94b48ae12e8482b857ca014a19a455fc353c818d594fc59"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
