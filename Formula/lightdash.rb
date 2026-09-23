class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.307.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.307.0/lightdash-cli-2.307.0-macos-arm64.tar.gz"
      sha256 "9f2dca89dbcb2bd6bb04daf7dff6c97404d9511efe1823042ae8397d26056e9c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.307.0/lightdash-cli-2.307.0-macos-x64.tar.gz"
      sha256 "f4fa6c9b1b56e14463a1c023105518a2faec53de9529ea7657cb4f1a125d719e"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.307.0/lightdash-cli-2.307.0-linux-x64.tar.gz"
    sha256 "ac76ebe3a4a09934e775c8e35464217954446509dc1f847c1768f2b310b6bd86"

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
