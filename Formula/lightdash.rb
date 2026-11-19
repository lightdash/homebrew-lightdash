class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.327.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.327.0/lightdash-cli-3.327.0-macos-arm64.tar.gz"
      sha256 "157361e63534cbd3455bfc141ce9cc95332294703525c47c7b287cb529097e68"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.327.0/lightdash-cli-3.327.0-macos-x64.tar.gz"
      sha256 "e4029317aa4f147bedd3561f976c20f9638f57bfe15dae8946b2355442d13fac"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.327.0/lightdash-cli-3.327.0-linux-x64.tar.gz"
    sha256 "94b08dfcf0974e75fa889b29c4560165077682b92c13d33d1e8ee14aa1be7906"

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
