class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.152.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.152.0/lightdash-cli-3.152.0-macos-arm64.tar.gz"
      sha256 "373f116028747a12dbeccb4f54ae10843d724a42a89beb7d980f6c0275ad7031"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.152.0/lightdash-cli-3.152.0-macos-x64.tar.gz"
      sha256 "d14bd61589ac227cd341506a0352a661f241e2ba887360b8c93c579979c23e1d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.152.0/lightdash-cli-3.152.0-linux-x64.tar.gz"
    sha256 "0d5b84ea024d405ad688e97db55c0190e8ecf18d051e7350ed589066b125ed9b"

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
