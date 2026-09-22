class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.288.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.288.2/lightdash-cli-2.288.2-macos-arm64.tar.gz"
      sha256 "1e4cbe33b6de853835220bf3572091d723d81f6e15a7341dd2f3103910cccb89"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.288.2/lightdash-cli-2.288.2-macos-x64.tar.gz"
      sha256 "f0fbadfe3c392d7bf43851c2e9fcca9e0f4fd1f136aec3cbc400de5279a8f514"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.288.2/lightdash-cli-2.288.2-linux-x64.tar.gz"
    sha256 "5a26bd30bc48b608ad80b648489253286c54aa63aaf61b821052287d3c446106"

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
