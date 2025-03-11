class Prt < Formula
  desc "PRT - Herramienta CLI para manejar pull requests en GitHub"
  homepage "https://github.com/djego/prt"
  url "https://github.com/djego/prt/releases/download/v0.4.1/homebrew-prt-v0.4.1.tar.gz"
  sha256 "723dd06f54ecc0c3c2f3d00ab8df50007ead3c65a942360a30784631f44ebc3a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/prt", "--version"
  end
end
