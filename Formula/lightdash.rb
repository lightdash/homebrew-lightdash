class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.504.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.504.0/lightdash-cli-2.504.0-macos-arm64.tar.gz"
      sha256 "66ba37c17e3e6f5ec72e1935a1c193a2ec25860f0588a289abd38bba637fcc20"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.504.0/lightdash-cli-2.504.0-macos-x64.tar.gz"
      sha256 "235c60c8c8b534adb78844d1e0006fef67f2ab8562cf2a191f35ebdb4d510712"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.504.0/lightdash-cli-2.504.0-linux-x64.tar.gz"
    sha256 "9c52508b106c4a1222a37e6f2884e3e23ec97da4d082e2f22e0240199d0b468a"

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
