class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.334.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.334.0/lightdash-cli-2.334.0-macos-arm64.tar.gz"
      sha256 "2de6c3915be3c5c3257cf9476379b8c61d7e317eedbdd08c5b9774c0ff8b14fc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.334.0/lightdash-cli-2.334.0-macos-x64.tar.gz"
      sha256 "715cb51d7dc363c87b1cf61dad80d252fcfc83b4afddbfb67e6cd3051fb18375"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.334.0/lightdash-cli-2.334.0-linux-x64.tar.gz"
    sha256 "e28c73847fff00936828cd0dff33d1288cc307a5d6e51b026fae35b94265efb5"

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
