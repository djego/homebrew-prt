class Prt < Formula
  desc "PRT - Herramienta CLI para manejar pull requests en GitHub"
  homepage "https://github.com/djego/prt"
  url "https://github.com/djego/prt/releases/download/v0.4.0/homebrew-prt-v0.4.tar.gz"
  sha256 "68bbaff26aba63819f2b15bc4c829e69b32f09e3063f5e329dcf29b427ccfc2e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/prt", "--version"
  end
end
