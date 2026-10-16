class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.600.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.600.0/lightdash-cli-2.600.0-macos-arm64.tar.gz"
      sha256 "5f6b66d0fe4f556e116a17e6a880db629823c1887fff36d71621b652bd060c5c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.600.0/lightdash-cli-2.600.0-macos-x64.tar.gz"
      sha256 "25ce6779d79572d41ebab90ec083b0b81bf94d124dc8e75df404e54dddf05811"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.600.0/lightdash-cli-2.600.0-linux-x64.tar.gz"
    sha256 "6e149ff8646366fb006956410d65967f4748b887e1c7f6590b9ce27188dde40a"

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
